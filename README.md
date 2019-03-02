# Open Globalize

This is the globalization project for [Open][1].

**NOTE:** If you just need to change the language of your store, and will only
have data in database in one language, then you don't need this gem, use [open_i18n][8],
which provides translations for static content (links, headers etc).

This gem adds the **model data** translation support using the [Globalize][3] gem.
[Read more](#model-translations)

Happy translating!

---

## Installation

Add the following to your `Gemfile`:

```ruby
gem 'globalize', github: 'globalize/globalize'
gem 'open_i18n', github: '99cm/open_i18n'
gem 'open_globalize', github: '99cm/open_globalize'
```

Run `bundle install`

You can use the generator to install migrations and append open_globalize assets to
your app open manifest file.

    rails g open_globalize:install

This will insert these lines into your open manifest files:

```
vendor/assets/javascripts/spree/backend/all.js
//= require spree/backend/open_globalize

vendor/assets/javascripts/spree/frontend/all.js
//= require spree/frontend/open_globalize

vendor/assets/stylesheets/spree/backend/all.css
*= require spree/backend/open_globalize
```

---

## Model Translations

This feature uses the [Globalize][3] gem to localize model data.
So far the following models are translatable:

    Product, Promotion, OptionType, Taxonomy, Taxon, Property and ShippingMethod.

Start your server and you should see a TRANSLATIONS link or a flag icon on each
admin section that supports this feature.

There are two configs that allow users to customize which locales
should be displayed as options on the translation forms and which should be
listed to customers on the frontend. You can set them on an initializer. e.g.

```ruby
OpenI18n::Config.available_locales = [:en, :es, :'pt-BR'] # displayed on frontend select box
OpenGlobalize::Config.supported_locales = [:en, :es, :'pt-BR'] # displayed on translation forms
```

PS. Please use symbols, not strings. e.g. `:'pt-BR'` not just `'pt-BR'`. Otherwise
you may get unexpected errors

Or if you prefer they're also available on the admin UI general settings section.

*Every record needs to have a translation. If by any chance you remove `open_globalize`
from your Gemfile, add some records and then add `open_globalize` gem back you might get
errors like ``undefined method for nilClass`` because Globalize will try fetch
translations that do not exist.*

---

## Contributing

[See corresponding guidelines][7]

---

Copyright (c) 2019 [Leo Wang][6] and other [contributors][5], released under the [New BSD License][6]. All rights reserved.

[1]: https://github.com/99cm/open
[3]: https://github.com/globalize/globalize
[5]: https://github.com/99cm/open_globalize/graphs/contributors
[6]: https://github.com/99cm/open_globalize/blob/master/LICENSE.md
[7]: https://github.com/99cm/open_globalize/blob/master/CONTRIBUTING.md
[8]: https://github.com/99cm/open_i18n