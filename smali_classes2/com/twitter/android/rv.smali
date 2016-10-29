.class Lcom/twitter/android/rv;
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
        "Lcom/twitter/android/hn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/twitter/android/rv;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/hn;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/twitter/android/rv;->a:Lcom/twitter/android/TimelineFragment;

    invoke-static {v0}, Lcom/twitter/android/TimelineFragment;->d(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/hn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/twitter/android/rv;->a()Lcom/twitter/android/hn;

    move-result-object v0

    return-object v0
.end method
