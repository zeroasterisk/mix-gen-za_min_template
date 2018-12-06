defmodule ZaMinTemplate do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name:       :za_min_template,
    short_desc: "Template for @zeroasterisk minimal",
    source_dir: "../template"


end
