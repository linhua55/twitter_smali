.class public Lcom/twitter/android/provider/ab;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/android/provider/z;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/provider/ab;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/twitter/android/provider/ab;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/android/provider/ab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/provider/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/provider/ab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/provider/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/provider/ab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/provider/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/provider/ab;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/twitter/android/provider/ab;->d:I

    return v0
.end method

.method static synthetic f(Lcom/twitter/android/provider/ab;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/twitter/android/provider/ab;->e:I

    return v0
.end method

.method static synthetic g(Lcom/twitter/android/provider/ab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/provider/ab;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/android/provider/ab;
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/twitter/android/provider/ab;->d:I

    .line 62
    return-object p0
.end method

.method public a(J)Lcom/twitter/android/provider/ab;
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/twitter/android/provider/ab;->f:J

    .line 67
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/provider/ab;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/android/provider/ab;->a:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public b(I)Lcom/twitter/android/provider/ab;
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/twitter/android/provider/ab;->e:I

    .line 72
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/provider/ab;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/provider/ab;->b:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/android/provider/ab;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/twitter/android/provider/ab;->c:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/twitter/android/provider/ab;->e()Lcom/twitter/android/provider/z;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/android/provider/ab;
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/twitter/model/businessprofiles/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ab;->g:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public e()Lcom/twitter/android/provider/z;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/twitter/android/provider/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/provider/z;-><init>(Lcom/twitter/android/provider/ab;Lcom/twitter/android/provider/aa;)V

    return-object v0
.end method
