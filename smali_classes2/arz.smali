.class public Larz;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/twitter/library/client/bk;

.field private c:Lcom/twitter/library/client/bd;

.field private d:Lasb;

.field private e:Lcom/twitter/model/core/Tweet;

.field private f:Lcom/twitter/library/util/FriendshipCache;

.field private g:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private h:Lcom/twitter/library/widget/av;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lasb;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Larz;->a:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Larz;->b:Lcom/twitter/library/client/bk;

    .line 100
    iput-object p3, p0, Larz;->c:Lcom/twitter/library/client/bd;

    .line 101
    iput-object p4, p0, Larz;->d:Lasb;

    .line 102
    return-void
.end method

.method static synthetic a(Larz;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lasb;)Larz;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Larz;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    .line 142
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Larz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lasb;)V

    .line 141
    return-object v0
.end method

.method static synthetic b(Larz;)Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->b:Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method static synthetic c(Larz;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->c:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic d(Larz;)Lasb;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->d:Lasb;

    return-object v0
.end method

.method static synthetic e(Larz;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->e:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method static synthetic f(Larz;)Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->f:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method static synthetic g(Larz;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    return-object v0
.end method

.method static synthetic h(Larz;)Lcom/twitter/library/widget/av;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->h:Lcom/twitter/library/widget/av;

    return-object v0
.end method

.method static synthetic i(Larz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Larz;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/scribe/TwitterScribeItem;)Larz;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Larz;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 119
    return-object p0
.end method

.method public a(Lcom/twitter/library/util/FriendshipCache;)Larz;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Larz;->f:Lcom/twitter/library/util/FriendshipCache;

    .line 113
    return-object p0
.end method

.method public a(Lcom/twitter/library/widget/av;)Larz;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Larz;->h:Lcom/twitter/library/widget/av;

    .line 125
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Larz;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Larz;->e:Lcom/twitter/model/core/Tweet;

    .line 107
    return-object p0
.end method

.method public a(Ljava/lang/String;)Larz;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Larz;->i:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public a()Lasa;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lary;

    invoke-direct {v0, p0}, Lary;-><init>(Larz;)V

    return-object v0
.end method
