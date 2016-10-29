.class public final Lbur;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/service/ab;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lbur;->a:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lbur;->b:Lcom/twitter/library/service/ab;

    .line 95
    return-void
.end method

.method static synthetic a(Lbur;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbur;)Lcom/twitter/library/service/ab;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->b:Lcom/twitter/library/service/ab;

    return-object v0
.end method

.method static synthetic c(Lbur;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lbur;->c:I

    return v0
.end method

.method static synthetic d(Lbur;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lbur;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lbur;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lbur;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lbur;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbur;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lbup;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lbup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbup;-><init>(Lbur;Lbuq;)V

    return-object v0
.end method

.method public a(I)Lbur;
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lbur;->c:I

    .line 99
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbur;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lbur;->d:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbur;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lbur;->e:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbur;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lbur;->f:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbur;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lbur;->g:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lbur;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lbur;->h:Ljava/lang/String;

    .line 128
    return-object p0
.end method
