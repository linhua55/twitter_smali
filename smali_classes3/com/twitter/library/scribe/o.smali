.class public final Lcom/twitter/library/scribe/o;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/scribe/MomentScribeDetails;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/Boolean;

.field e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

.field f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

.field g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

.field h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

.field i:J

.field j:Lcom/twitter/model/moments/ap;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 510
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 511
    iput-wide v0, p0, Lcom/twitter/library/scribe/o;->a:J

    .line 512
    iput-wide v0, p0, Lcom/twitter/library/scribe/o;->b:J

    .line 519
    iput-wide v0, p0, Lcom/twitter/library/scribe/o;->i:J

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/scribe/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/twitter/library/scribe/o;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/twitter/library/scribe/o;
    .locals 1

    .prologue
    .line 525
    iput-wide p1, p0, Lcom/twitter/library/scribe/o;->a:J

    .line 526
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    .line 574
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    .line 568
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    .line 562
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/MomentScribeDetails$Transition;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    .line 556
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/ap;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->j:Lcom/twitter/model/moments/ap;

    .line 586
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->d:Ljava/lang/Boolean;

    .line 544
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->c:Ljava/lang/String;

    .line 538
    return-object p0
.end method

.method public b(J)Lcom/twitter/library/scribe/o;
    .locals 1

    .prologue
    .line 531
    iput-wide p1, p0, Lcom/twitter/library/scribe/o;->b:J

    .line 532
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/scribe/o;
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/twitter/library/scribe/o;->k:Ljava/lang/String;

    .line 550
    return-object p0
.end method

.method public c(J)Lcom/twitter/library/scribe/o;
    .locals 1

    .prologue
    .line 579
    iput-wide p1, p0, Lcom/twitter/library/scribe/o;->i:J

    .line 580
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/twitter/library/scribe/o;->e()Lcom/twitter/library/scribe/MomentScribeDetails;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/scribe/MomentScribeDetails;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;-><init>(Lcom/twitter/library/scribe/o;Lcom/twitter/library/scribe/n;)V

    return-object v0
.end method
