.class final Lrx/subjects/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lrx/subjects/n",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/subjects/SubjectSubscriptionManager;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lrx/subjects/f;->a:Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/subjects/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lrx/subjects/f;->a:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lrx/subjects/f;->a:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {p1, v0, v1}, Lrx/subjects/n;->b(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 67
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lrx/subjects/n;

    invoke-virtual {p0, p1}, Lrx/subjects/f;->a(Lrx/subjects/n;)V

    return-void
.end method
