.class Lokhttp3/i;
.super Lokio/m;
.source "Twttr"


# instance fields
.field final synthetic a:Ldfp;

.field final synthetic b:Lokhttp3/h;


# direct methods
.method constructor <init>(Lokhttp3/h;Lokio/ab;Ldfp;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lokhttp3/i;->b:Lokhttp3/h;

    iput-object p3, p0, Lokhttp3/i;->a:Ldfp;

    invoke-direct {p0, p2}, Lokio/m;-><init>(Lokio/ab;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lokhttp3/i;->a:Ldfp;

    invoke-virtual {v0}, Ldfp;->close()V

    .line 752
    invoke-super {p0}, Lokio/m;->close()V

    .line 753
    return-void
.end method
