.class Lcom/twitter/android/smartfollow/h;
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
.field final synthetic a:Lcom/twitter/android/smartfollow/i;

.field final synthetic b:Lcom/twitter/android/smartfollow/c;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lcom/twitter/android/smartfollow/c;Lcom/twitter/android/smartfollow/i;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/twitter/android/smartfollow/h;->b:Lcom/twitter/android/smartfollow/c;

    iput-object p2, p0, Lcom/twitter/android/smartfollow/h;->a:Lcom/twitter/android/smartfollow/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/twitter/android/smartfollow/h;->a:Lcom/twitter/android/smartfollow/i;

    invoke-static {v0}, Lcom/twitter/android/smartfollow/i;->a(Lcom/twitter/android/smartfollow/i;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/h;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lbbq;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/twitter/android/smartfollow/h;->c:Lcom/twitter/app/common/app/n;

    .line 278
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->u()Lbbq;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 277
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/h;->a()Lbbq;

    move-result-object v0

    return-object v0
.end method
