export MKL_SERVICE_FORCE_INTEL=1
export MKL_THREADING_LAYER=GNU
mkdir /root/personal_assistant/actor01_merge_ep35
xtuner convert merge /root/personal_assistant/model/Shanghai_AI_Laboratory/internlm-chat-7b /root/personal_assistant/actor01_hfmodel_epoch35 /root/personal_assistant/actor01_merge_ep35 --max-shard-size 2GB
# xtuner convert merge \
#     ${NAME_OR_PATH_TO_LLM} \
#     ${NAME_OR_PATH_TO_ADAPTER} \
#     ${SAVE_PATH} \
#     --max-shard-size 2GB