.class public Lcva;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcuy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcva;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcva;->f:I

    return v0
.end method

.method static synthetic b(Lcva;)F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcva;->e:F

    return v0
.end method

.method static synthetic c(Lcva;)F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcva;->a:F

    return v0
.end method

.method static synthetic d(Lcva;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcva;->d:I

    return v0
.end method

.method static synthetic e(Lcva;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcva;->b:I

    return v0
.end method

.method static synthetic f(Lcva;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcva;->c:I

    return v0
.end method


# virtual methods
.method public a(F)Lcva;
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcva;->e:F

    .line 127
    return-object p0
.end method

.method public a(I)Lcva;
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcva;->f:I

    .line 121
    return-object p0
.end method

.method public b(F)Lcva;
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcva;->a:F

    .line 133
    return-object p0
.end method

.method public b(I)Lcva;
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcva;->b:I

    .line 139
    return-object p0
.end method

.method public c(I)Lcva;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 144
    iput p1, p0, Lcva;->c:I

    .line 145
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcva;->e()Lcuy;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcva;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 150
    iput p1, p0, Lcva;->d:I

    .line 151
    return-object p0
.end method

.method public e()Lcuy;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcuy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcuy;-><init>(Lcva;Lcuz;)V

    return-object v0
.end method
