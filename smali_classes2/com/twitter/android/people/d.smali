.class Lcom/twitter/android/people/d;
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
        "Lbbq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/people/e;

.field final synthetic b:Lcom/twitter/android/people/c;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lcom/twitter/android/people/c;Lcom/twitter/android/people/e;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/android/people/d;->b:Lcom/twitter/android/people/c;

    iput-object p2, p0, Lcom/twitter/android/people/d;->a:Lcom/twitter/android/people/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/twitter/android/people/d;->a:Lcom/twitter/android/people/e;

    invoke-static {v0}, Lcom/twitter/android/people/e;->a(Lcom/twitter/android/people/e;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/d;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lbbq;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/people/d;->c:Lcom/twitter/app/common/app/n;

    .line 43
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->u()Lbbq;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 42
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/people/d;->a()Lbbq;

    move-result-object v0

    return-object v0
.end method
