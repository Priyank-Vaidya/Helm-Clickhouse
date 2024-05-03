{{- define "clickhouse.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name -}}
{{- end -}}


{{- define "clickhouse.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "clickhouse.labels" -}}
app: clickhouse
{{- end -}}

{{- define "clickhouse.selectorLabels" -}}
app.kubernetes.io/name: {{ include "clickhouse.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}