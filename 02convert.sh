mkdir hf
export MKL_SERVICE_FORCE_INTEL=1
export MKL_THREADING_LAYER=GNU
xtuner convert pth_to_hf /root/personal_assistant/actor/internlm_chat_7b_actor01.py /root/work_dirs/internlm_chat_7b_actor01/epoch_35.pth /root/personal_assistant/actor01_hfmodel_epoch35
