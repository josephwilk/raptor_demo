Routes = Raptor.routes do
  path "posts" do
    index :to => "Interactors::Home.index",
      :ValidationFailure => render(:new)
    end
  end
end
