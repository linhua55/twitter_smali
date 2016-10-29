.class Lcom/twitter/android/moments/ui/fullscreen/eu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/eq;


# instance fields
.field final synthetic a:Lcom/twitter/android/periscope/ac;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/er;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/er;Lcom/twitter/android/periscope/ac;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/eu;->b:Lcom/twitter/android/moments/ui/fullscreen/er;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/eu;->a:Lcom/twitter/android/periscope/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eu;->a:Lcom/twitter/android/periscope/ac;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/ac;->a()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eu;->a:Lcom/twitter/android/periscope/ac;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/ac;->b()V

    goto :goto_0
.end method
