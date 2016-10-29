.class Lcom/twitter/android/moments/ui/maker/h;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/android/moments/ui/maker/dt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/e;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/h;->a:Lcom/twitter/android/moments/ui/maker/e;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/dt;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/h;->a:Lcom/twitter/android/moments/ui/maker/e;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/e;->a(Lcom/twitter/android/moments/ui/maker/e;Lcom/twitter/android/moments/ui/maker/dt;)V

    .line 79
    :cond_0
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/twitter/android/moments/ui/maker/dt;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/h;->a(Lcom/twitter/android/moments/ui/maker/dt;)V

    return-void
.end method
