\name{irdata}
\alias{irdata}
\docType{data}
\title{Immune Response data}
\description{
Data from literature. 
}
\usage{data(irdata)}
\format{
  A data frame with 574 observations on the following 16 variables.
  \describe{
    \item{\code{RecordNum}}{a numeric vector}
    \item{\code{Old.Reference}}{a numeric vector}
    \item{\code{Reference}}{a numeric vector}
    \item{\code{Vaccine.and.trial.group}}{a factor with levels \code{(Pentacel +Recombivax) then Prevnar} \code{11 valent Pneumonococcal-DT Finnland} \code{11 valent Pneumonococcal-DT Israel} \code{11 valent Pneumonococcal-DT+alum Finnland} \code{11 valent Pneumonococcal-DT+alum Israel} \code{11 valent Pneumonococcal-DT+alum Philippines} \code{ACTHIB} \code{AP-YF} \code{AVA IM} \code{AVA SQ} \code{BERNA-YF} \code{Boostrix} \code{Boostrix + Poliorix} \code{Boostrix Polio (dTpa-IPV)} \code{DPaT-HVB-IPV/HIB mix} \code{DPaT-HVB-IPV+HIB separate} \code{DPaT-IPV/HiB mix} \code{DPaT-IPV+HiB separately} \code{DPT  +Hib/HBV} \code{DPT +Hib + HBV} \code{DPTa} \code{DPTa/Pa} \code{DPTa5} \code{DT} \code{DTP-HB + Hib} \code{DTPa-HBV} \code{DTPa/IPV/PRP-TT +PncD/T11} \code{DTPa2} \code{DTPa3} \code{DTPa5} \code{DTPaHBV-IPV+Hib} \code{DTPaHBV-IPV+Hib, PRP} \code{DTPaHBV-IPV+Hib, PRP-TT} \code{DTPw-C} \code{DTPw-E} \code{DTPw/IPV/PRP-TT +PncD/T11 group 1} \code{DTPw/IPV/PRP-TT +PncD/T11 group 2} \code{DTPwHBV-Hib} \code{DTPwHBV + Hib(Separate)} \code{Engerix B} \code{GBS Ia-TT 15 ug} \code{GBS Ia-TT 3.75 ug} \code{GBS Ia 55 ug} \code{GBS IaTT 60 ug} \code{GBS Ib-TT 15.75 ug} \code{GBS Ib-TT 3.94 ug} \code{GBS Ib-TT 63 ug} \code{GBS Ib 53 ug} \code{GBS II-TT} \code{GBS II-TT 14.3 ug} \code{GBS II-TT 3.6 ug} \code{GBS II-TT 57 ug} \code{GBS II-TT/III-TT} \code{GBS III-TT} \code{GBS III-TT 14.5 ug} \code{GBS III-TT 3.6 ug} \code{GBS III-TT 58 ug} \code{GBS III 50 ug} \code{GBS V-CRM197} \code{GBS V-TT} \code{GBS V-TT 2.4/1.1 ug} \code{GBS V-TT 38.5/17 ug} \code{GBS V-TT 9.6/4.3 ug} \code{H5N1Influenza  45ug} \code{H5N1Influenza  7.5ug} \code{H5N1Influenza  90ug} \code{H5N1Influenza 15ug} \code{H5N1Influenza Placebo} \code{Havrix+Engerix B} \code{HBV/Pentavax} \code{Heptavalent Pneumonococcal-CMR197} \code{Heptavalent Pneumonococcal-OMPC} \code{Heptvalent Pneumonococcal-CMR197} \code{Hiberix} \code{HibTITER} \code{HibTITER (PRP-CRM197)} \code{Infantrix-IVP+Hib} \code{Infantrix-IVP+Hib+Previnar} \code{Infantrix + Engerix separate} \code{Infantrix/Engerix Mixed} \code{Infantrix/Engrerix Mixed} \code{IPV-mkc} \code{IPV-vero} \code{Lyme OspA 15ug} \code{Lyme OspA 30ug} \code{LYMErix (OpsA)} \code{MCV4-DT} \code{Menactra Meningococcal PS-DT (MCV-4)} \code{Mencevax ACWY} \code{Meningitec (Menc-CRM197)} \code{Menomune Meningococcal PS } \code{Menomune Meningococcal PS (PSV-4)} \code{Octavalent Pneumonococcal-DT} \code{Octavalent Pneumonococcal-TT} \code{Oka/Merck varicella 16K PFU +M-M-R} \code{Oka/Merck varicella 50K PFU +M-M-R} \code{OpsA Lyme Disease} \code{Orimmune} \code{OspA Lyme} \code{Pentacel + Prevnar +Recombivax} \code{Pentavax} \code{Revaxis (Td-IPV)} \code{RKI-YF} \code{RSV PFP3} \code{Tripedia} \code{Tripedia-Orimune-HibTITER} \code{Twinrix} \code{Twinrix adult} \code{Twinrix pediatric} \code{Typhoid/HAV} \code{Varilrix + M-M-R}}
    \item{\code{Carrier.for.conjugate.vaccines}}{a factor with levels \code{} \code{CRM197} \code{Diphtheria toxoid} \code{OMPC} \code{Tetanus protein} \code{Tetanus toxoid}}
    \item{\code{Age.in.yrs.at.first.vaccination}}{a factor with levels \code{0.12} \code{0.17} \code{0.17-0.5} \code{0.25} \code{0.5} \code{1} \code{1-12} \code{1 -2} \code{1.5} \code{11-18} \code{12-15} \code{15-18} \code{15-70} \code{16-65} \code{17-72} \code{18-32} \code{18-39} \code{18-40} \code{18-45} \code{18-50} \code{18-60} \code{18-64} \code{19-52} \code{19-56} \code{19-57} \code{19-64} \code{19-70} \code{19-83} \code{2} \code{2-5} \code{20-45} \code{20-60} \code{20-61} \code{21-60} \code{3} \code{4} \code{4-14} \code{40-70} \code{5-16} \code{65-83}}
    \item{\code{Dose.schedule.in.weeks}}{a factor with levels \code{0} \code{0, 2} \code{0, 2, 4} \code{0, 26} \code{0, 26/0, 4, 26} \code{0, 4} \code{0, 4, 10} \code{0, 4, 26} \code{0, 4, 52} \code{0, 4, 8} \code{0, 4, 8, 52} \code{0, 52} \code{0, 52, 104} \code{0, 6, 13} \code{0, 8} \code{0, 8, 16} \code{0, 8, 18} \code{0, 8, 18 } \code{0, 8, 18, 220} \code{0, 8, 18, 270} \code{0, 8, 18, 320} \code{0, 8, 18, 44} \code{0, 8, 18, 56} \code{0, 8, 18, 60} \code{0, 8, 18, 70} \code{0, 8, 18; 4,12,22} \code{0, 8, 18; 4,12,22 } \code{0, 8, 39} \code{0, 9, 37}}
    \item{\code{Num.Immunizations}}{a numeric vector}
    \item{\code{Endpoint.in.weeks.after.first.vaccine}}{a numeric vector}
    \item{\code{Antigen}}{a factor with levels \code{1} \code{14} \code{18C} \code{19F} \code{23F} \code{3} \code{4} \code{5} \code{6B} \code{7F} \code{9V} \code{A} \code{AVA} \code{C} \code{DT} \code{F protein} \code{FHA} \code{FIM} \code{HAV} \code{HBs} \code{Hemagglutinin} \code{Ia-CPS} \code{Ib-CPS} \code{II-CPS} \code{III-CPS} \code{Measles} \code{MenC} \code{Mumps} \code{OspA} \code{Polio-1} \code{Polio-2} \code{Polio-3} \code{PRN} \code{PRP} \code{PRP*} \code{PT} \code{Rubella} \code{TT} \code{V-CPS} \code{Varicella} \code{Vi} \code{W135} \code{Y} \code{YF}}
    \item{\code{Units}}{a factor with levels \code{} \code{EL.U/mL} \code{EU} \code{HI} \code{IU} \code{mIU} \code{ng} \code{SBA} \code{ug}}
    \item{\code{GMT}}{a numeric vector}
    \item{\code{GMT.95.pct.interval.low.limit}}{a numeric vector}
    \item{\code{GMT.95.pct.interval.high.limit}}{a numeric vector}
    \item{\code{n}}{a numeric vector}
    \item{\code{Fold.Range}}{a numeric vector}
  }
}
%\details{  ~~ If necessary, more details than the __description__ above ~~}
\source{ See \code{data(refs)} for references}
%\references{ ~~ possibly secondary sources and usages ~~}
\examples{
data(irdata)
irdata[1,]
}
\keyword{datasets}
