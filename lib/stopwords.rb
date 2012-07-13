module Stopwords

  STOP_WORDS = [
    'a','about','above','across','after','again','against','all','almost',
    'alone','along','already','also','although','always','among','an','and',
    'another','any','anybody','anyone','anything','anywhere','are','area',
    'areas','around','as','ask','asked','asking','asks','at','away','back',
    'backed','backing','backs','be','became','because','become','becomes',
    'been','before','began','behind','being','beings','best','better','between',
    'big','both','but','by','came','can','cannot','case','cases','certain',
    'certainly','clear','clearly','come','could','did','differ','different',
    'differently','do','does','done','down','down','downed','downing','downs',
    'during','e','each','early','either','end','ended','ending','ends','enough',
    'even','evenly','ever','every','everybody','everyone','everything',
    'everywhere','face','faces','fact','facts','far','felt','few','find',
    'finds','first','for','four','from','full','fully','further','furthered',
    'furthering','furthers','gave','general','generally','get','gets','give',
    'given','gives','go','going','good','goods','got','great','greater',
    'greatest','group','grouped','grouping','groups','had','has','have',
    'having','he','her','here','herself','high','high','high','higher',
    'highest','him','himself','his','how','however','i','if','important','in',
    'interest','interested','interesting','interests','into','is','it','its',
    'itself','just','keep','keeps','kind','knew','know','known','knows','large',
    'largely','last','later','latest','least','less','let','lets','like','likely',
    'long','longer','longest','made','make','making','man','many','may','me',
    'member','members','men','might','more','most','mostly','mr','mrs','much',
    'must','my','myself','necessary','need','needed','needing','needs','never',
    'new','new','newer','newest','next','no','nobody','non','noone','not',
    'nothing','now','nowhere','number','numbers','of','off','often','old','older',
    'oldest','on','once','one','only','open','opened','opening','opens','or',
    'order','ordered','ordering','orders','other','others','our','out','over',
    'part','parted','parting','parts','per','perhaps','place','places','point',
    'pointed','pointing','points','possible','present','presented','presenting',
    'presents','problem','problems','put','puts','quite','rather','really','right',
    'right','room','rooms','said','same','saw','say','says','second','seconds',
    'see','seem','seemed','seeming','seems','sees','several','shall','she','should',
    'show','showed','showing','shows','side','sides','since','small','smaller',
    'smallest','so','some','somebody','someone','something','somewhere','state',
    'states','still','such','sure','take','taken','than','that','the','their',
    'them','then','there','therefore','these','they','thing','things','think',
    'thinks','this','those','though','thought','thoughts','three','through',
    'thus','to','today','together','too','took','toward','turn','turned','turning',
    'turns','two','u','under','until','up','upon','us','use','used','uses','very',
    'want','wanted','wanting','wants','was','way','ways','we','well','wells','went',
    'were','what','when','where','whether','which','while','who','whole','whose',
    'why','will','with','within','without','work','worked','working','works','would',
    'year','years','yet','you','young','younger','youngest','your','yours','bt','jst',
    'iv','x','xx','xxx','xxxx''xxxxx','ya','yeah','yo','here','oh','ha','haha','haaaa',
    'ahahaha','go','do','hola','pls','lol','p','mah','eh','aw','tryna','run','u','ur','d','r',
    'nw','lool','loool','looool','hehe','hehehe','aw','aww','awww','heh','ar','ooh','ooo',
    'did','dont','im','il',':','-',':d','bit','theres','n','--','am','id','stop', 'because',
    'ta', 'dunno', 'init', 'blud', 'safe', 'tail',
    'did','dont','im','il',':','-',':d','bit','theres','n','--','am','id','stop', 'im','ive'
]
  TOKEN_REGEXP = /^[a-z]+$|^\w+\-\w+|^[a-z]+[0-9]+[a-z]+$|^[0-9]+[a-z]+|^[a-z]+[0-9]+$/ 
  
  def self.is?(token)
    STOP_WORDS.member?(token)
  end
  
  def self.valid?(token)
    (((token =~ TOKEN_REGEXP) == 0)) and !(STOP_WORDS.member?(token)) 
  end
  
end