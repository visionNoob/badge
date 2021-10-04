import numpy as np
from .strategy import Strategy
import pdb


class WAAL(Strategy):
    def __init__(self, X, Y, idxs_lb, net, handler, args):
        super(WAAL, self).__init__(X, Y, idxs_lb, net, handler, args)

    def query(self, query_num):
        """
        adversarial query strategy
        :param n:
        :return:
        """

        idxs_unlabeled = np.arange(self.n_pool)[~self.idx_lb]

        # prediction output probability
        probs = self.predict_prob(
            self.X[idxs_unlabeled], self.Y[idxs_unlabeled])

        # uncertainly score (three options, single_worst, L2_upper, L1_upper)
        # uncertainly_score = self.single_worst(probs)
        uncertainly_score = 0.5 * \
            self.L2_upper(probs) + 0.5 * self.L1_upper(probs)

        # print(uncertainly_score)

        # prediction output discriminative score
        dis_score = self.pred_dis_score(
            self.X[idxs_unlabeled], self.Y[idxs_unlabeled])

        # print(dis_score)

        # computing the decision score
        total_score = uncertainly_score - self.selection * dis_score
        # print(total_score)
        b = total_score.sort()[1][:query_num]
        # print(total_score[b])

        # sort the score with minimal query_number examples
        # expected value outputs from smaller to large

        return idxs_unlabeled[total_score.sort()[1][:query_num]]
