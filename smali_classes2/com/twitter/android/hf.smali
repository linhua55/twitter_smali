.class Lcom/twitter/android/hf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/i",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/HomeTimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTimelineFragment;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/twitter/android/hf;->a:Lcom/twitter/android/HomeTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/twitter/android/hf;->a:Lcom/twitter/android/HomeTimelineFragment;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTimelineFragment;->ae()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/twitter/android/hf;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
