.class Lcom/twitter/android/alerts/landing/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lbmd;",
        "Lclh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/alerts/landing/l;


# direct methods
.method constructor <init>(Lcom/twitter/android/alerts/landing/l;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/alerts/landing/m;->a:Lcom/twitter/android/alerts/landing/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbmd;)Lclh;
    .locals 1

    .prologue
    .line 55
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lbmd;->f:Lclh;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lbmd;

    invoke-virtual {p0, p1}, Lcom/twitter/android/alerts/landing/m;->a(Lbmd;)Lclh;

    move-result-object v0

    return-object v0
.end method
