.class public Lcom/twitter/library/api/activity/c;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/api/activity/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcks;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/twitter/library/provider/b;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/api/activity/c;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/twitter/library/api/activity/c;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/library/api/activity/c;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/twitter/library/api/activity/c;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/library/api/activity/c;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/twitter/library/api/activity/c;->c:I

    return v0
.end method

.method static synthetic d(Lcom/twitter/library/api/activity/c;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/twitter/library/api/activity/c;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/twitter/library/api/activity/c;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/twitter/library/api/activity/c;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/twitter/library/api/activity/c;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/twitter/library/api/activity/c;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/twitter/library/api/activity/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/library/api/activity/c;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/library/api/activity/c;)Lcom/twitter/library/provider/b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/library/api/activity/c;->h:Lcom/twitter/library/provider/b;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/library/api/activity/c;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/twitter/library/api/activity/c;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/twitter/library/api/activity/c;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/twitter/library/api/activity/c;->j:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/api/activity/c;
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/twitter/library/api/activity/c;->c:I

    .line 73
    return-object p0
.end method

.method public a(J)Lcom/twitter/library/api/activity/c;
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/twitter/library/api/activity/c;->d:J

    .line 79
    return-object p0
.end method

.method public a(Lcom/twitter/library/provider/b;)Lcom/twitter/library/api/activity/c;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/twitter/library/api/activity/c;->h:Lcom/twitter/library/provider/b;

    .line 103
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/library/api/activity/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcks;",
            "L::Ljava/util/List",
            "<TA;>;>(T",
            "L;",
            ")",
            "Lcom/twitter/library/api/activity/c;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/library/api/activity/c;->g:Ljava/util/List;

    .line 97
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/api/activity/c;
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/twitter/library/api/activity/c;->a:Z

    .line 61
    return-object p0
.end method

.method public b(J)Lcom/twitter/library/api/activity/c;
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/twitter/library/api/activity/c;->e:J

    .line 85
    return-object p0
.end method

.method public b(Z)Lcom/twitter/library/api/activity/c;
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/twitter/library/api/activity/c;->b:Z

    .line 67
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/library/api/activity/c;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Lcom/twitter/library/api/activity/c;
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/twitter/library/api/activity/c;->f:J

    .line 91
    return-object p0
.end method

.method public c(Z)Lcom/twitter/library/api/activity/c;
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/twitter/library/api/activity/c;->i:Z

    .line 109
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/c;->e()Lcom/twitter/library/api/activity/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/twitter/library/api/activity/c;
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/twitter/library/api/activity/c;->j:Z

    .line 115
    return-object p0
.end method

.method protected e()Lcom/twitter/library/api/activity/b;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/twitter/library/api/activity/b;

    invoke-direct {v0, p0}, Lcom/twitter/library/api/activity/b;-><init>(Lcom/twitter/library/api/activity/c;)V

    return-object v0
.end method
