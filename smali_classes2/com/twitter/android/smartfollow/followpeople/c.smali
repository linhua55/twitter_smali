.class Lcom/twitter/android/smartfollow/followpeople/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/library/scribe/TwitterScribeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/smartfollow/followpeople/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/smartfollow/followpeople/a;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/twitter/android/smartfollow/followpeople/c;->a:Lcom/twitter/android/smartfollow/followpeople/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/c;->a:Lcom/twitter/android/smartfollow/followpeople/a;

    invoke-static {v0}, Lcom/twitter/android/smartfollow/followpeople/a;->a(Lcom/twitter/android/smartfollow/followpeople/a;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v1

    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/android/smartfollow/followpeople/c;->a(Ljava/lang/Long;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    return-object v0
.end method
