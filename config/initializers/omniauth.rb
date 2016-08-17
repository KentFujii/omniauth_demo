Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '278390139193167', '51074dabc8b43ecdd66c2f0ff506eeea'
  provider :linkedin, '75w3ljcqdg1pwo', 'DbFAUszKamyh4DAP'
end
