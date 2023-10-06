# Tools

## kube-ps1
A script that lets you add the current Kubernetes context and namespace configured on kubectl to your Bash/Zsh prompt strings (i.e. the $PS1). 

```shell
. "/home/linuxbrew/.linuxbrew/opt/kube-ps1/share/kube-ps1.sh" 
export KUBE_PS1_SYMBOL_ENABLE=false 
export KUBE_PS1_SYMBOL_USE_IMG=false 
export KUBE_PS1_PREFIX="[" 
export KUBE_PS1_SUFFIX="]" 
export KUBE_PS1_DIVIDER=" --> " 
#PS1='$(kube_ps1)'$PS1 
PS1='\[\e[36m\]\u\[\e[0m\]@\[\e[33m\]\h\[\e[0m\] \W $(kube_ps1)\$' 
```
<https://github.com/jonmosco/kube-ps1>

## awsume
Awsume is a convenient way to manage session tokens and assume role credentials.
With it I do not need to add the `--profile` and `--region` to some of my bash scripts.
<https://awsu.me/>

