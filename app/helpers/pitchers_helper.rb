module PitchersHelper
  def pitches_per_inning (pitcher)
    # BFIP = whip+3
    # BBIP = BB9 /9
    # KIP =K9/9
    bfip = pitcher.whip + 3
    # bbip = pitcher.bb_norm.to_f/9
    # kip = pitcher.k9_norm.to_f/9
    bbip = pitcher.bb.to_f/pitcher.ip_162
    kip = pitcher.k.to_f/pitcher.ip_162
    pitches_per_inn = (bfip * 3.392) + (bbip * 4.444) + (kip * 1.916)
    pitches_per_inn.round(2)
  end
  def pitches_max(pitcher)
    pitches_per_inn = pitches_per_inning (pitcher)
    pitches_max = pitches_per_inn * pitcher.ip_162
    pitches_max.round(2)
  end
end
