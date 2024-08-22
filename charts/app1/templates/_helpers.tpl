{{- define "application.fullname" -}}
{{- .Release.Name | printf "%s-%s" .Chart.Name }}
{{- end }}

{{- define "application.name" -}}
{{- .Release.Name | printf "%s-%s" .Chart.Name }}
{{- end }}

{{- define "application.labels" -}}
app.kubernetes.io/name: {{ include "application.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

