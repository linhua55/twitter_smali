.class Lcom/twitter/android/profiles/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/profiles/al;


# direct methods
.method constructor <init>(Lcom/twitter/android/profiles/al;J)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/twitter/android/profiles/am;->b:Lcom/twitter/android/profiles/al;

    iput-wide p2, p0, Lcom/twitter/android/profiles/am;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/twitter/android/profiles/am;->b:Lcom/twitter/android/profiles/al;

    iget-wide v2, p0, Lcom/twitter/android/profiles/am;->a:J

    invoke-static {v0, v2, v3}, Lcom/twitter/android/profiles/al;->a(Lcom/twitter/android/profiles/al;J)V

    .line 308
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/android/profiles/am;->a(Lrx/ao;)V

    return-void
.end method
