# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Account
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1bWVu
dGF0aW9uIjoiVGhlIEFXUyByZWdpb24gdXNlZCB0byBkaXNwYXRjaCB0aGUg
cmVxdWVzdC4iLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUR1YWxTdGFjayI6eyJi
dWlsdEluIjoiQVdTOjpVc2VEdWFsU3RhY2siLCJyZXF1aXJlZCI6dHJ1ZSwi
ZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50YXRpb24iOiJXaGVuIHRydWUsIHVz
ZSB0aGUgZHVhbC1zdGFjayBlbmRwb2ludC4gSWYgdGhlIGNvbmZpZ3VyZWQg
ZW5kcG9pbnQgZG9lcyBub3Qgc3VwcG9ydCBkdWFsLXN0YWNrLCBkaXNwYXRj
aGluZyB0aGUgcmVxdWVzdCBNQVkgcmV0dXJuIGFuIGVycm9yLiIsInR5cGUi
OiJCb29sZWFuIn0sIlVzZUZJUFMiOnsiYnVpbHRJbiI6IkFXUzo6VXNlRklQ
UyIsInJlcXVpcmVkIjp0cnVlLCJkZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRh
dGlvbiI6IldoZW4gdHJ1ZSwgc2VuZCB0aGlzIHJlcXVlc3QgdG8gdGhlIEZJ
UFMtY29tcGxpYW50IHJlZ2lvbmFsIGVuZHBvaW50LiBJZiB0aGUgY29uZmln
dXJlZCBlbmRwb2ludCBkb2VzIG5vdCBoYXZlIGEgRklQUyBjb21wbGlhbnQg
ZW5kcG9pbnQsIGRpc3BhdGNoaW5nIHRoZSByZXF1ZXN0IHdpbGwgcmV0dXJu
IGFuIGVycm9yLiIsInR5cGUiOiJCb29sZWFuIn0sIkVuZHBvaW50Ijp7ImJ1
aWx0SW4iOiJTREs6OkVuZHBvaW50IiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1
bWVudGF0aW9uIjoiT3ZlcnJpZGUgdGhlIGVuZHBvaW50IHVzZWQgdG8gc2Vu
ZCB0aGlzIHJlcXVlc3QiLCJ0eXBlIjoiU3RyaW5nIn19LCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W3siZm4iOiJhd3MucGFydGl0aW9uIiwiYXJndiI6W3si
cmVmIjoiUmVnaW9uIn1dLCJhc3NpZ24iOiJQYXJ0aXRpb25SZXN1bHQifV0s
InR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoi
aXNTZXQiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XX0seyJmbiI6InBh
cnNlVVJMIiwiYXJndiI6W3sicmVmIjoiRW5kcG9pbnQifV0sImFzc2lnbiI6
InVybCJ9XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQ
UyJ9LHRydWVdfV0sImVycm9yIjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBG
SVBTIGFuZCBjdXN0b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0
eXBlIjoiZXJyb3IifSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIs
InJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJlcnJv
ciI6IkludmFsaWQgQ29uZmlndXJhdGlvbjogRHVhbHN0YWNrIGFuZCBjdXN0
b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoiZXJyb3Ii
fSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOnsicmVmIjoi
RW5kcG9pbnQifSwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJp
bmdFcXVhbHMiLCJhcmd2IjpbeyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwibmFtZSJdfSwiYXdzIl19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxT
dGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQ
YXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL2FjY291bnQtZmlwcy57UmVnaW9ufS5hcGku
YXdzIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNp
Z3Y0Iiwic2lnbmluZ05hbWUiOiJhY2NvdW50Iiwic2lnbmluZ1JlZ2lvbiI6
InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50
In1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgYW5kIER1YWxT
dGFjayBhcmUgZW5hYmxlZCwgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90
IHN1cHBvcnQgb25lIG9yIGJvdGgiLCJ0eXBlIjoiZXJyb3IifV19LHsiY29u
ZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVm
IjoiVXNlRklQUyJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7
ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0
cnVlLHsiZm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9u
UmVzdWx0In0sInN1cHBvcnRzRklQUyJdfV19XSwidHlwZSI6InRyZWUiLCJy
dWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0
dHBzOi8vYWNjb3VudC1maXBzLntSZWdpb259LmFtYXpvbmF3cy5jb20iLCJw
cm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJz
aWduaW5nTmFtZSI6ImFjY291bnQiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFz
dC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsi
Y29uZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBlbmFibGVkIGJ1dCB0
aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJUFMiLCJ0eXBlIjoi
ZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxz
IiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2
IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3Rh
Y2siXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
OltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2FjY291bnQue1JlZ2lv
bn0uYXBpLmF3cyIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5h
bWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiYWNjb3VudCIsInNpZ25pbmdS
ZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJl
bmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJEdWFsU3Rh
Y2sgaXMgZW5hYmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3Vw
cG9ydCBEdWFsU3RhY2siLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9u
cyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vYWNjb3VudC51cy1l
YXN0LTEuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVt
ZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiYWNjb3VudCIs
InNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0s
InR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0
cmluZ0VxdWFscyIsImFyZ3YiOlt7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7
InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJuYW1lIl19LCJhd3MtY24iXX1d
LCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1
ZV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNl
RHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3Ry
dWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25S
ZXN1bHQifSwic3VwcG9ydHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5FcXVh
bHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJl
ZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19
XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVu
ZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vYWNjb3VudC1maXBzLntSZWdpb259
LmFwaS5hbWF6b253ZWJzZXJ2aWNlcy5jb20uY24iLCJwcm9wZXJ0aWVzIjp7
ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6
ImFjY291bnQiLCJzaWduaW5nUmVnaW9uIjoiY24tbm9ydGh3ZXN0LTEifV19
LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRp
b25zIjpbXSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3RhY2sgYXJlIGVuYWJs
ZWQsIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IG9uZSBv
ciBib3RoIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZu
IjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0
cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0
QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBw
b3J0c0ZJUFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2FjY291bnQt
Zmlwcy57UmVnaW9ufS5hbWF6b25hd3MuY29tLmNuIiwicHJvcGVydGllcyI6
eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUi
OiJhY2NvdW50Iiwic2lnbmluZ1JlZ2lvbiI6ImNuLW5vcnRod2VzdC0xIn1d
fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsiY29uZGl0
aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBlbmFibGVkIGJ1dCB0aGlzIHBh
cnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJUFMiLCJ0eXBlIjoiZXJyb3Ii
fV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJn
diI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRy
ZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1
YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1d
fV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJl
bmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2FjY291bnQue1JlZ2lvbn0uYXBp
LmFtYXpvbndlYnNlcnZpY2VzLmNvbS5jbiIsInByb3BlcnRpZXMiOnsiYXV0
aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiYWNj
b3VudCIsInNpZ25pbmdSZWdpb24iOiJjbi1ub3J0aHdlc3QtMSJ9XX0sImhl
YWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMi
OltdLCJlcnJvciI6IkR1YWxTdGFjayBpcyBlbmFibGVkIGJ1dCB0aGlzIHBh
cnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IER1YWxTdGFjayIsInR5cGUiOiJl
cnJvciJ9XX0seyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoi
aHR0cHM6Ly9hY2NvdW50LmNuLW5vcnRod2VzdC0xLmFtYXpvbmF3cy5jb20u
Y24iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2ln
djQiLCJzaWduaW5nTmFtZSI6ImFjY291bnQiLCJzaWduaW5nUmVnaW9uIjoi
Y24tbm9ydGh3ZXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRw
b2ludCJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19LHsiZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1
ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3si
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0
dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9y
dHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1
ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJl
c3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUi
LCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6
Imh0dHBzOi8vYWNjb3VudC1maXBzLntSZWdpb259LntQYXJ0aXRpb25SZXN1
bHQjZHVhbFN0YWNrRG5zU3VmZml4fSIsInByb3BlcnRpZXMiOnt9LCJoZWFk
ZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpb
XSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3RhY2sgYXJlIGVuYWJsZWQsIGJ1
dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IG9uZSBvciBib3Ro
IiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9v
bGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0cnVlXX1d
LCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIs
ImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0ZJ
UFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
OltdLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbXSwi
ZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9hY2NvdW50LWZpcHMue1JlZ2lv
bn0ue1BhcnRpdGlvblJlc3VsdCNkbnNTdWZmaXh9IiwicHJvcGVydGllcyI6
e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfV19LHsiY29u
ZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBlbmFibGVkIGJ1dCB0aGlz
IHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJUFMiLCJ0eXBlIjoiZXJy
b3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6
InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFu
RXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2Ijpb
eyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2si
XX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltd
LCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2FjY291bnQue1JlZ2lvbn0u
e1BhcnRpdGlvblJlc3VsdCNkdWFsU3RhY2tEbnNTdWZmaXh9IiwicHJvcGVy
dGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7
ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkR1YWxTdGFjayBpcyBlbmFibGVk
IGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IER1YWxTdGFj
ayIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbXSwidHlwZSI6
InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdF
cXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwiYXdzLWdsb2JhbCJd
fV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vYWNjb3VudC51cy1lYXN0
LTEuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMi
Olt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoiYWNjb3VudCIsInNp
Z25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5
cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdF
cXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwiYXdzLWNuLWdsb2Jh
bCJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vYWNjb3VudC5jbi1u
b3J0aHdlc3QtMS5hbWF6b25hd3MuY29tLmNuIiwicHJvcGVydGllcyI6eyJh
dXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJh
Y2NvdW50Iiwic2lnbmluZ1JlZ2lvbiI6ImNuLW5vcnRod2VzdC0xIn1dfSwi
aGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMi
OltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2FjY291bnQue1JlZ2lv
bn0ue1BhcnRpdGlvblJlc3VsdCNkbnNTdWZmaXh9IiwicHJvcGVydGllcyI6
e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfV19XX0=

    JSON
  end
end
