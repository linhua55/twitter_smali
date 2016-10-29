.class public Lcom/twitter/android/moments/ui/maker/bo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Laui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bp;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bp;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bo;->a:Laui;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/ui/maker/bp;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/bp;->a()Lcom/twitter/android/moments/ui/maker/bp;

    move-result-object v0

    return-object v0
.end method

.method public a(Laum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laum",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bo;->a:Laui;

    invoke-virtual {v0, p1}, Laui;->b(Laum;)V

    .line 34
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/bp;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bo;->a:Laui;

    invoke-virtual {v0, p1}, Laui;->c(Lauc;)V

    .line 42
    return-void
.end method

.method public b(Laum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laum",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bo;->a:Laui;

    invoke-virtual {v0, p1}, Laui;->a(Laum;)V

    .line 38
    return-void
.end method
