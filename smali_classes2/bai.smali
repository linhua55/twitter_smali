.class Lbai;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lbah;


# direct methods
.method constructor <init>(Lbah;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lbai;->a:Lbah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lbai;->a:Lbah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbah;->a(Lbah;Ljava/io/Closeable;)V

    .line 60
    return-void
.end method
