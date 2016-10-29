.class Lccj;
.super Landroid/os/Handler;
.source "Twttr"


# instance fields
.field private final a:Lccf;


# direct methods
.method constructor <init>(Lccf;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 755
    iput-object p1, p0, Lccj;->a:Lccf;

    .line 756
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lccj;->a:Lccf;

    invoke-virtual {v0, p1}, Lccf;->a(Landroid/os/Message;)V

    .line 761
    return-void
.end method
