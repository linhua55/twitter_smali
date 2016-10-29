.class public Lcom/twitter/android/av/revenue/i;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/twitter/model/core/Tweet;

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/revenue/i;->i:Z

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/av/revenue/h;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/android/av/revenue/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/revenue/i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/av/revenue/i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/av/revenue/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/av/revenue/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/av/revenue/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/av/revenue/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/av/revenue/i;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/twitter/android/av/revenue/i;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/twitter/android/av/revenue/i;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/av/revenue/i;->h:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/av/revenue/i;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/twitter/android/av/revenue/i;->i:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/av/revenue/VideoConversationCardData;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/av/revenue/VideoConversationCardData;-><init>(Lcom/twitter/android/av/revenue/i;Lcom/twitter/android/av/revenue/h;)V

    return-object v0
.end method

.method public a(J)Lcom/twitter/android/av/revenue/i;
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/twitter/android/av/revenue/i;->g:J

    .line 68
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/av/revenue/i;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->h:Lcom/twitter/model/core/Tweet;

    .line 73
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/av/revenue/i;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->c:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/android/av/revenue/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/android/av/revenue/i;"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->a:Ljava/util/List;

    .line 38
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/av/revenue/i;
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/twitter/android/av/revenue/i;->i:Z

    .line 78
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/av/revenue/i;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->d:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/twitter/android/av/revenue/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/android/av/revenue/i;"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->b:Ljava/util/List;

    .line 43
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/android/av/revenue/i;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->e:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/android/av/revenue/i;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/android/av/revenue/i;->f:Ljava/lang/String;

    .line 63
    return-object p0
.end method
