.class final Lcom/twitter/android/media/stickers/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcqa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/twitter/android/media/stickers/k;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcqa;)Z
    .locals 4

    .prologue
    .line 63
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqa;

    invoke-virtual {v0}, Lcqa;->a()Lcpf;

    move-result-object v0

    iget-object v0, v0, Lcpf;->m:Lcqb;

    iget-wide v2, p0, Lcom/twitter/android/media/stickers/k;->a:J

    invoke-virtual {v0, v2, v3}, Lcqb;->a(J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcqa;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/k;->a(Lcqa;)Z

    move-result v0

    return v0
.end method
