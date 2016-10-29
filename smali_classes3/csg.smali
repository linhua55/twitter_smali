.class public final Lcsg;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcsg;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcsg;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcsg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcsg;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcsg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcsg;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcsg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcsg;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcsg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcsg;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcsg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcsg;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcsg;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcsg;->g:Z

    return v0
.end method

.method static synthetic h(Lcsg;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcsg;->h:Z

    return v0
.end method


# virtual methods
.method public a(J)Lcsg;
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcsg;->a:J

    .line 64
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcsg;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcsg;->b:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public a(Z)Lcsg;
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcsg;->g:Z

    .line 100
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcsg;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcsg;->c:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public b(Z)Lcsg;
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcsg;->h:Z

    .line 106
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lcsg;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcsg;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcsg;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcsg;->d:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcsg;->e()Lcse;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcsg;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcsg;->e:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method protected e()Lcse;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcse;-><init>(Lcsg;Lcsf;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcsg;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcsg;->f:Ljava/lang/String;

    .line 94
    return-object p0
.end method
