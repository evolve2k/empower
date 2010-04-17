# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{remarkable_activerecord}
  s.version = "3.1.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Carlos Brando", "Jos\303\251 Valim", "Diego Carrion"]
  s.date = %q{2010-02-19}
  s.description = %q{Remarkable ActiveRecord: collection of matchers and macros with I18n for ActiveRecord}
  s.email = ["eduardobrando@gmail.com", "jose.valim@gmail.com", "dc.rec1@gmail.com"]
  s.extra_rdoc_files = ["README", "LICENSE", "CHANGELOG"]
  s.files = ["README", "LICENSE", "CHANGELOG", "lib/remarkable_activerecord", "lib/remarkable_activerecord/base.rb", "lib/remarkable_activerecord/describe.rb", "lib/remarkable_activerecord/human_names.rb", "lib/remarkable_activerecord/matchers", "lib/remarkable_activerecord/matchers/accept_nested_attributes_for_matcher.rb", "lib/remarkable_activerecord/matchers/allow_mass_assignment_of_matcher.rb", "lib/remarkable_activerecord/matchers/allow_values_for_matcher.rb", "lib/remarkable_activerecord/matchers/association_matcher.rb", "lib/remarkable_activerecord/matchers/have_column_matcher.rb", "lib/remarkable_activerecord/matchers/have_default_scope_matcher.rb", "lib/remarkable_activerecord/matchers/have_index_matcher.rb", "lib/remarkable_activerecord/matchers/have_readonly_attributes_matcher.rb", "lib/remarkable_activerecord/matchers/have_scope_matcher.rb", "lib/remarkable_activerecord/matchers/validate_acceptance_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_associated_matcher.rb", "lib/remarkable_activerecord/matchers/validate_confirmation_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_exclusion_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_inclusion_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_length_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_numericality_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_presence_of_matcher.rb", "lib/remarkable_activerecord/matchers/validate_uniqueness_of_matcher.rb", "lib/remarkable_activerecord.rb", "locale/en.yml", "remarkable_activerecord.gemspec"]
  s.homepage = %q{http://github.com/carlosbrando/remarkable}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{remarkable}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Remarkable ActiveRecord: collection of matchers and macros with I18n for ActiveRecord}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 1.2.0"])
      s.add_runtime_dependency(%q<remarkable>, ["~> 3.1.13"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.0"])
      s.add_dependency(%q<remarkable>, ["~> 3.1.13"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.0"])
    s.add_dependency(%q<remarkable>, ["~> 3.1.13"])
  end
end
