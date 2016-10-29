.class Laur;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lauo;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lauq;


# direct methods
.method constructor <init>(Lauq;Lauo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Laur;->c:Lauq;

    iput-object p2, p0, Laur;->a:Lauo;

    iput-object p3, p0, Laur;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 65
    iget-object v0, p0, Laur;->a:Lauo;

    iget-object v1, p0, Laur;->c:Lauq;

    invoke-static {v1}, Lauq;->a(Lauq;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laur;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lauo;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
