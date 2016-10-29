.class public Lcom/twitter/android/events/d;
.super Lcom/twitter/android/timeline/p;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/p",
        "<",
        "Lcom/twitter/android/events/c;",
        "Lcom/twitter/android/events/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/twitter/model/topic/l;

.field private d:I

.field private e:Lcom/twitter/android/widget/TopicView$TopicData;

.field private f:Lcss;

.field private g:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/p;-><init>(J)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/events/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/events/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/events/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/events/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/events/d;)Lcom/twitter/model/topic/l;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/events/d;->c:Lcom/twitter/model/topic/l;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/events/d;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/twitter/android/events/d;->d:I

    return v0
.end method

.method static synthetic e(Lcom/twitter/android/events/d;)Lcom/twitter/android/widget/TopicView$TopicData;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/events/d;->e:Lcom/twitter/android/widget/TopicView$TopicData;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/events/d;)Lcss;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/events/d;->f:Lcss;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/events/d;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/twitter/android/events/d;->g:I

    return v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/twitter/android/events/d;->d:I

    .line 71
    return-object p0
.end method

.method public a(Lcom/twitter/android/widget/TopicView$TopicData;)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/android/events/d;->e:Lcom/twitter/android/widget/TopicView$TopicData;

    .line 77
    return-object p0
.end method

.method public a(Lcom/twitter/model/topic/l;)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/android/events/d;->c:Lcom/twitter/model/topic/l;

    .line 65
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/twitter/android/events/d;->f:Lcss;

    .line 83
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/android/events/d;->a:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public b(I)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/twitter/android/events/d;->g:I

    .line 89
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/events/d;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/android/events/d;->b:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/twitter/android/timeline/p;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/d;->a:Ljava/lang/String;

    .line 95
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/d;->b:Ljava/lang/String;

    .line 96
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/d;->c:Lcom/twitter/model/topic/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/events/d;->d()Lcom/twitter/android/events/c;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/twitter/android/events/c;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/twitter/android/events/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/events/c;-><init>(Lcom/twitter/android/events/d;)V

    return-object v0
.end method
