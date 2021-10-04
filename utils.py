import logging
import os
from typing import Optional
import numpy as np
import random
import torch

log = logging.getLogger(__name__)


def seed_everything(seed=1106) -> int:

    max_seed_value = np.iinfo(np.uint32).max
    min_seed_value = np.iinfo(np.uint32).min

    log.info(f"Global seed set to {seed}")
    os.environ["PL_GLOBAL_SEED"] = str(seed)
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)
    return seed
