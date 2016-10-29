.class Lwp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwo;


# direct methods
.method constructor <init>(Lwo;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lwp;->a:Lwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lwp;->a:Lwo;

    iget-object v0, p0, Lwp;->a:Lwo;

    invoke-static {v0}, Lwo;->a(Lwo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lwo;->a(Z)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
