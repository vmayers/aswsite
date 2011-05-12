class AddAwardsProgramSpeciesPartb < ActiveRecord::Migration
  def self.up
    # Get all categories
    categories = AwardsProgramCategory.all
    
    # CLASS B - BAP
    #------------------------------------------------------------------------------------------------------
    class_categories = categories.reject {|c| c.awards_program_class.classification != 'Class B'}
    class_categories = class_categories.reject {|c| c.awards_program_class.awards_program.acronym != 'BAP'}
    
    # Add Livebearers entries
    category_id = class_categories.reject {|c| c.name != 'Livebearers'}.first.id
    
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Ameca')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Brachyrhaphis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Characodon')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Ilyodon')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Goodea')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Limnia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Phallichthys')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Heterandia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Jenysia')
    
    # Add Anabantoids entries
     category_id = class_categories.reject {|c| c.name != 'Anabantoids'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Macropodus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Trichogaster leeri & T. trichopterus')
    
    # Add Barbs and relatives entries
     category_id = class_categories.reject {|c| c.name != 'Barbs and relatives'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Barbodes not listed elsewhere (class D)')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Capoeta')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Danio margaitatus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Esomus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Puntius')
    
    # Add Rift Lake Cichlids entries
     category_id = class_categories.reject {|c| c.name != 'Rift Lake Cichlids'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Aulonocara')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cheilochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chilotilapia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Copadichromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cynotilapia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cyrtocara')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Genyochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Greenwoodochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hemitilapia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Julidochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Labeotropheus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Labidochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Lethrinops')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Metriaclima')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Neolamprologus brichardi')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'N. leleupi & N. pulcher')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Melanochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Otopharynx')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Petrotilapia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Protomelas')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pseudotropheus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Placidochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Sciaenochromis')
    
    # Add New World Cichlids entries
     category_id = class_categories.reject {|c| c.name != 'New World Cichlids'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Amphilophus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Apistogramma agassizi')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'A. borelli')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'A. cacatuoides')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'A. catei')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'A. macmasteri & A. rotpunkt')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Burjiquina')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chuco')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Copora')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cleithacara')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Gymnogeophagus australis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'G. rhabdotus & G. gymnogenys')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Herichthys')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Heros')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Microgeophagus (Papiliochromis)')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nandopsis salvini & N. managuense')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nannacara anomala')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Neetroplus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Mesonauta')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Paratheraps')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pterophylum scalare')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Theraps')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Thorichthys')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tomocichla')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Vieja')
    
    # Add Cichlids (Others) entries
    category_id = class_categories.reject {|c| c.name != 'Cichlids (Others)'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Anomalochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chromidotilapia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Etroplus maculatus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pelvicachromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Steatocranus cassuarius')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tilapia not listed elsewhere')

    # Add Characins entries
    category_id = class_categories.reject {|c| c.name != 'Characins'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Anoptichthys')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Astyanax')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nematobrycon')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Gymnocorymbus')

    #Add Killifish
    category_id = class_categories.reject {|c| c.name != 'Killifish'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Mop spawning Killies')

    # Add Catfish
    category_id = class_categories.reject {|c| c.name != 'Catfish'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Corydoras aeneus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Corydoras paleatus')

    # Add Rainbowfish
    category_id = class_categories.reject {|c| c.name != 'Rainbowfish'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Bedotia gaeyi')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Melanotaenia boesmani')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Melanotaenia lacustris')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Melanotaenia praecox')

    # Add Other Species
    category_id = class_categories.reject {|c| c.name != 'Other Species'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Badis badis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cyprinus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Carasius')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Elasoma')
      
    # CLASS C - BAP
    #------------------------------------------------------------------------------------------------------
    class_categories = categories.reject {|c| c.awards_program_class.classification != 'Class C'}
    class_categories = class_categories.reject {|c| c.awards_program_class.awards_program.acronym != 'BAP'}
    
     # Add Livebearers entries
      category_id = class_categories.reject {|c| c.name != 'Livebearers'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Belonosox')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Dermogenys')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hemirhaphodon')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Giradinichthys')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nomorhamphus')

      # Add Anabantoids entries
       category_id = class_categories.reject {|c| c.name != 'Anabantoids'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Belontia')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Colisa')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Macropodus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Trichogaster')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Trichopsis')

      # Add Rift Lake Cichlids entries
       category_id = class_categories.reject {|c| c.name != 'Rift Lake Cichlids'}.first.id

       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Altolamprologus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Aristochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Asprotilapia')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Aulonocranus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Buccochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Callochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Champsochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Ctenochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cyphotilapia')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chalinochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cyprichromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Dimidiochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Enantiopus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Eretmodus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Fossorochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Lamprologus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Lepidiolamprologus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Neolamprologus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nimbochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Paracyprichromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Simochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Spathodus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tanganicodus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Telmatochromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tropheus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Variabilichromis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Xenotilapia')

      # Add New World Cichlids entries
       category_id = class_categories.reject {|c| c.name != 'New World Cichlids'}.first.id

       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Apistrogramma')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Apistogramoides')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Crenicichla <10 inches')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Dicrossus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Geophagus')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Guianacara')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Gymnogeophagus Balzani')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hysplecara')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nannacara')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nandopsis')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Petenia splendida')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Santanoperca leucosticta (G. jurapari)')
       AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Vieja')

      # Add Cichlids (Others) entries
      category_id = class_categories.reject {|c| c.name != 'Cichlids (Others)'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hemichromis elongates')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hemichromis fasciatus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Etroplus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nannachromis')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Paratilapia')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Paraneetroplus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pelvicachromis humilus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Steatocranus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Teleogramma')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tilapia buttikofferi')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tilapia joka')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tilapia mariae') 
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tilapia zilli')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Thysochromis')

      # Add Characins entries
      category_id = class_categories.reject {|c| c.name != 'Characins'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hyphessobrycon')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Moenkhausia')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Megalamphodus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Phenacogrammus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hemigramus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nannostomus')

      #Add Killifish
      category_id = class_categories.reject {|c| c.name != 'Killifish'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Bottom spawning killies')

      # Add Catfish
      category_id = class_categories.reject {|c| c.name != 'Catfish'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Ancistrus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Callichthys')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Corydoras hasbrosus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Corydoras panda')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Corydoras pygmaeus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hoplosternum')

      # Add Rainbowfish
      category_id = class_categories.reject {|c| c.name != 'Rainbowfish'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Melanotaenia')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Glossolepis')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chalitherina')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pseudomigil')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Poppendetta')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Iriatherina')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Rhadinocentrus')

      # Add Other Species
      category_id = class_categories.reject {|c| c.name != 'Other Species'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'All other gobies or gudgeons')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Acanthophthalmus')
      
      # CLASS D - BAP
      #------------------------------------------------------------------------------------------------------
      class_categories = categories.reject {|c| c.awards_program_class.classification != 'Class D'}
      class_categories = class_categories.reject {|c| c.awards_program_class.awards_program.acronym != 'BAP'}

       # Add Livebearers entries
        category_id = class_categories.reject {|c| c.name != 'Livebearers'}.first.id

        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Anableps')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Potomotrygon')

        # Add Anabantoids entries
         category_id = class_categories.reject {|c| c.name != 'Anabantoids'}.first.id

        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Anabas')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Ctenapoma')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Helostoma')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Malputta')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Osphromenus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Parosphromenus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pseudosphromenus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Sphaerichthys')
        
        # Add Barbs and relatives entries
         category_id = class_categories.reject {|c| c.name != 'Barbs and relatives'}.first.id

        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Barbodes lateristriga')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Barbodes schwanenfeldii')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Rasbora')

        # Add Rift Lake Cichlids entries
         category_id = class_categories.reject {|c| c.name != 'Rift Lake Cichlids'}.first.id

         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cyathopharynx')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cunningtonia')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Opthalmotilapia')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Petrochromis')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Gnathochromis')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Benthochromis')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Boulengerochromis')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Bathybates')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Haplotaxodon')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Triglachromis')
         

        # Add New World Cichlids entries
         category_id = class_categories.reject {|c| c.name != 'New World Cichlids'}.first.id

         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Acarichthys')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Acaronia')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Astronotus')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Biotodoma')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Biotecus')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Caquetaia')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chaetobranchus')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cichla')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Crenicichla >10 inches')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hoplarchus')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Santanoperca')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Retroculus')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Symphyssodon')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pterophyllum dumerilli ')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pterophyllum altum')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Taeniacara')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Teleocichla')
         AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Uaru')

        # Add Characins entries
        category_id = class_categories.reject {|c| c.name != 'Characins'}.first.id

        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nannobrycon')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pyrrhulina')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Copella')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Paracheirodon')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Metynis')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Serrasalmus')

        # Add Catfish
        category_id = class_categories.reject {|c| c.name != 'Catfish'}.first.id

        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Aspidoras')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Brochis')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Corydoras')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Dianema')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Farlowella')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Otocinculus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Rinelocaria')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Synodontis')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Sturisoma')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'all other species of catfish not previously listed')

        # Add Other Species
        category_id = class_categories.reject {|c| c.name != 'Other Species'}.first.id

        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Botia')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Channa')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Osteoglossum')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Epalzeorhynchus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Labeo')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Scatophagus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Mono')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Chanda')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Datnoides')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Monocirrhus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Nadus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Polycentrus')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Taxotes')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tetradon')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pantodon')
        AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Polypterus')
      
  end

  def self.down
  end
end
