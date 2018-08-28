Rails.configuration.stripe = {
  :publishable_key => Rails.application.credentials.dig(:stripe, :STRIPE_PUBLISHABLE_KEY),
  :secret_key      => Rails.application.credentials.dig(:stripe, :STRIPE_SECRET_KEY)
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]