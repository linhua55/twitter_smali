.class public Laru;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lars;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Lcom/twitter/library/client/Session;

.field private l:I

.field private m:Lcom/twitter/android/revenue/d;

.field private n:Lcom/twitter/model/timeline/ae;

.field private o:Lcom/twitter/android/timeline/cp;

.field private p:Lcom/twitter/android/timeline/cp;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 94
    iput-object p1, p0, Laru;->k:Lcom/twitter/library/client/Session;

    .line 95
    return-void
.end method

.method static synthetic a(Laru;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Laru;->a:I

    return v0
.end method

.method static synthetic b(Laru;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Laru;->b:I

    return v0
.end method

.method static synthetic c(Laru;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Laru;->c:I

    return v0
.end method

.method static synthetic d(Laru;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Laru;->d:Z

    return v0
.end method

.method static synthetic e(Laru;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Laru;->e:J

    return-wide v0
.end method

.method static synthetic f(Laru;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Laru;->f:J

    return-wide v0
.end method

.method static synthetic g(Laru;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Laru;->g:J

    return-wide v0
.end method

.method static synthetic h(Laru;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Laru;->h:J

    return-wide v0
.end method

.method static synthetic i(Laru;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Laru;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Laru;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->k:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method static synthetic l(Laru;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Laru;->l:I

    return v0
.end method

.method static synthetic m(Laru;)Lcom/twitter/android/revenue/d;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->m:Lcom/twitter/android/revenue/d;

    return-object v0
.end method

.method static synthetic n(Laru;)Lcom/twitter/model/timeline/ae;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->n:Lcom/twitter/model/timeline/ae;

    return-object v0
.end method

.method static synthetic o(Laru;)Lcom/twitter/android/timeline/cp;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->o:Lcom/twitter/android/timeline/cp;

    return-object v0
.end method

.method static synthetic p(Laru;)Lcom/twitter/android/timeline/cp;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laru;->p:Lcom/twitter/android/timeline/cp;

    return-object v0
.end method


# virtual methods
.method public a(I)Laru;
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Laru;->a:I

    .line 99
    return-object p0
.end method

.method public a(J)Laru;
    .locals 1

    .prologue
    .line 118
    iput-wide p1, p0, Laru;->e:J

    .line 119
    return-object p0
.end method

.method public a(Lcom/twitter/android/revenue/d;)Laru;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Laru;->m:Lcom/twitter/android/revenue/d;

    .line 154
    return-object p0
.end method

.method public a(Lcom/twitter/android/timeline/cp;)Laru;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Laru;->o:Lcom/twitter/android/timeline/cp;

    .line 166
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/ae;)Laru;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Laru;->n:Lcom/twitter/model/timeline/ae;

    .line 160
    return-object p0
.end method

.method public a(Ljava/lang/String;)Laru;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Laru;->i:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public a(Z)Laru;
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Laru;->d:Z

    .line 114
    return-object p0
.end method

.method public b(I)Laru;
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Laru;->b:I

    .line 104
    return-object p0
.end method

.method public b(J)Laru;
    .locals 1

    .prologue
    .line 123
    iput-wide p1, p0, Laru;->f:J

    .line 124
    return-object p0
.end method

.method public b(Lcom/twitter/android/timeline/cp;)Laru;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Laru;->p:Lcom/twitter/android/timeline/cp;

    .line 172
    return-object p0
.end method

.method public b(Ljava/lang/String;)Laru;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Laru;->j:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public c(I)Laru;
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Laru;->c:I

    .line 109
    return-object p0
.end method

.method public c(J)Laru;
    .locals 1

    .prologue
    .line 128
    iput-wide p1, p0, Laru;->g:J

    .line 129
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Laru;->e()Lars;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Laru;
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Laru;->l:I

    .line 149
    return-object p0
.end method

.method public d(J)Laru;
    .locals 1

    .prologue
    .line 133
    iput-wide p1, p0, Laru;->h:J

    .line 134
    return-object p0
.end method

.method public e()Lars;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lars;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lars;-><init>(Laru;Lart;)V

    return-object v0
.end method
