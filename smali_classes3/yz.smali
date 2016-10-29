.class public Lyz;
.super Lyl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyl",
        "<",
        "Lza;",
        "Lyz;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/twitter/android/wc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lyl;-><init>()V

    return-void
.end method

.method static synthetic a(Lyz;)Lcom/twitter/android/wc;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lyz;->c:Lcom/twitter/android/wc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/wc;)Lyz;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lyz;->c:Lcom/twitter/android/wc;

    .line 173
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lyz;->d()Lxz;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lxz;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lyw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyw;-><init>(Lyz;Lyx;)V

    return-object v0
.end method
