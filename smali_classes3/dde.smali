.class Ldde;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddd;


# direct methods
.method constructor <init>(Lddd;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ldde;->a:Lddd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Ldde;->a:Lddd;

    invoke-static {v0, p1}, Lddd;->a(Lddd;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
