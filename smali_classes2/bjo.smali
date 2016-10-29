.class Lbjo;
.super Ljava/util/TimerTask;
.source "Twttr"


# instance fields
.field final synthetic a:Lbjn;


# direct methods
.method constructor <init>(Lbjn;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbjo;->a:Lbjn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbjo;->a:Lbjn;

    invoke-virtual {v0}, Lbjn;->b()V

    .line 31
    return-void
.end method
