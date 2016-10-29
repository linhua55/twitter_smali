.class Lcom/twitter/android/moments/ui/fullscreen/en;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/util/collection/ac",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/em;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/em;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/en;->a:Lcom/twitter/android/moments/ui/fullscreen/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ac;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;->b:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->f:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    if-eq v0, v1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;->b:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->d:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    if-ne v0, v1, :cond_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/en;->a:Lcom/twitter/android/moments/ui/fullscreen/em;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/em;->a(Lcom/twitter/android/moments/ui/fullscreen/em;)Lcom/twitter/moments/core/ui/widget/capsule/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/moments/core/ui/widget/capsule/b;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/twitter/model/moments/viewmodels/i;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/twitter/model/moments/viewmodels/i;

    .line 40
    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/em;->a(Lcom/twitter/model/moments/viewmodels/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/en;->a:Lcom/twitter/android/moments/ui/fullscreen/em;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/em;->b(Lcom/twitter/android/moments/ui/fullscreen/em;)V

    .line 44
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/twitter/util/collection/ac;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/en;->a(Lcom/twitter/util/collection/ac;)V

    return-void
.end method
