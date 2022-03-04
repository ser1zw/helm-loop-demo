{{- define "target-group-binding-template" }}
apiVersion: elbv2.k8s.aws/v1beta1
kind: TargetGroupBinding
metadata:
  name: my-target-group-binding-{{ .id }}
spec:
  serviceRef:
    name: {{ .rootCtx.Values.appName }}
    port: {{ .port }}
  targetGroupARN: {{ quote .targetGroupARN }}
---
{{- end }}
