.class Lm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll;


# direct methods
.method constructor <init>(Ll;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lm;->a:Ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lm;->a:Ll;

    iget-object v0, v0, Ll;->a:Lk;

    invoke-virtual {v0}, Lk;->c()V

    .line 28
    return-void
.end method
