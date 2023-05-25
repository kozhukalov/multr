{{- define "multr.selectorLabels" -}}
pod_label: {{ .Values.type }}
{{- end }}

{{- define "multr.nodeSelector" -}}
node_label: {{ .Values.type }}
{{- end }}