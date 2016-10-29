.class Lcom/twitter/android/moments/data/maker/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/android/moments/data/maker/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/moments/data/maker/t;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/t;J)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/u;->b:Lcom/twitter/android/moments/data/maker/t;

    iput-wide p2, p0, Lcom/twitter/android/moments/data/maker/u;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/data/maker/t;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/u;->b:Lcom/twitter/android/moments/data/maker/t;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/t;->a(Lcom/twitter/android/moments/data/maker/t;)Lcom/twitter/android/moments/data/maker/q;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/moments/data/maker/u;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/data/maker/q;->a(J)V

    .line 64
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/twitter/android/moments/data/maker/t;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/u;->a(Lcom/twitter/android/moments/data/maker/t;)V

    return-void
.end method
