.class public Lcom/twitter/android/moments/ui/guide/g;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Laui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/ax;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:J


# direct methods
.method protected constructor <init>(Laui;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/ax;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/g;->a:Laui;

    .line 23
    iput-wide p2, p0, Lcom/twitter/android/moments/ui/guide/g;->b:J

    .line 24
    return-void
.end method


# virtual methods
.method public a()Laui;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/ax;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/g;->a:Laui;

    return-object v0
.end method

.method public b()Lcom/twitter/android/moments/ui/maker/ax;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ax;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/guide/g;->b:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/moments/ui/maker/ax;-><init>(J)V

    return-object v0
.end method
