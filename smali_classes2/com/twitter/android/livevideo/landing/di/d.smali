.class Lcom/twitter/android/livevideo/landing/di/d;
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
        "Lcom/twitter/library/client/bd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/di/e;

.field final synthetic b:Lcom/twitter/android/livevideo/landing/di/a;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/di/a;Lcom/twitter/android/livevideo/landing/di/e;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/di/d;->b:Lcom/twitter/android/livevideo/landing/di/a;

    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/di/d;->a:Lcom/twitter/android/livevideo/landing/di/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/d;->a:Lcom/twitter/android/livevideo/landing/di/e;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/e;->b(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/d;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/client/bd;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/d;->c:Lcom/twitter/app/common/app/n;

    .line 211
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->q()Lcom/twitter/library/client/bd;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 210
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/di/d;->a()Lcom/twitter/library/client/bd;

    move-result-object v0

    return-object v0
.end method
