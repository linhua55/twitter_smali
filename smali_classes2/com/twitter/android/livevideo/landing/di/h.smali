.class Lcom/twitter/android/livevideo/landing/di/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/library/provider/dm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/di/j;

.field final synthetic b:Lcom/twitter/android/livevideo/landing/di/f;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/di/f;Lcom/twitter/android/livevideo/landing/di/j;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/di/h;->b:Lcom/twitter/android/livevideo/landing/di/f;

    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/di/h;->a:Lcom/twitter/android/livevideo/landing/di/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/h;->a:Lcom/twitter/android/livevideo/landing/di/j;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/j;->b(Lcom/twitter/android/livevideo/landing/di/j;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/h;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/provider/dm;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/h;->c:Lcom/twitter/app/common/app/n;

    .line 86
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->r()Lcom/twitter/library/provider/dm;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 85
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/dm;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/di/h;->a()Lcom/twitter/library/provider/dm;

    move-result-object v0

    return-object v0
.end method
