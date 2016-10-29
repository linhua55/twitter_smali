.class Lajo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lajn;


# direct methods
.method constructor <init>(Lajn;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lajo;->b:Lajn;

    iput-object p2, p0, Lajo;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lajo;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 32
    return-void
.end method
