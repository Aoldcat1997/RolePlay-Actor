# RolePlay-Actor
# -模型训练与测试流程
### 训练文件
~~~
>xtuner train /root/personal_assistant/actor/internlm_chat_7b_actor01.py --deepspeed deepspeed_zero2
~~~
### 将训练模型转换为hf格式模型
~~~
>>>mkdir hf
export MKL_SERVICE_FORCE_INTEL=1
export MKL_THREADING_LAYER=GNU
xtuner convert pth_to_hf /root/personal_assistant/actor/internlm_chat_7b_actor01.py /root/work_dirs/internlm_chat_7b_actor01/epoch_35.pth /root/personal_assistant/actor01_hfmodel_epoch35
~~~
### 模型文件合并
~~~python
mkdir /root/personal_assistant/actor01_merge_ep35
xtuner convert merge /root/personal_assistant/model/Shanghai_AI_Laboratory/internlm-chat-7b /root/personal_assistant/actor01_hfmodel_epoch35 /root/personal_assistant/actor01_merge_ep35 --max-shard-size 2GB
~~~
### 终端对话demo测试
~~~python
xtuner chat /root/personal_assistant/actor01_merge --prompt-template internlm_chat
~~~
![demo_test](E:\LLM\RolePlay-Actor\RolePlay-Actor\picture\demo_test.png)
# -模型量化
# -主角与配角模型优化
- [*] 模型训练流程与基础demo
- [] 角色模型优化
- [] 接入语音系统
