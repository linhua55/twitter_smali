.class Lccv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccq;

.field final synthetic c:Lccs;


# direct methods
.method constructor <init>(Lccs;Ljava/lang/String;Lccq;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lccv;->c:Lccs;

    iput-object p2, p0, Lccv;->a:Ljava/lang/String;

    iput-object p3, p0, Lccv;->b:Lccq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lccv;->c:Lccs;

    invoke-static {v0}, Lccs;->a(Lccs;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 182
    iget-object v0, p0, Lccv;->c:Lccs;

    iget-object v1, p0, Lccv;->a:Ljava/lang/String;

    iget-object v2, p0, Lccv;->b:Lccq;

    invoke-static {v0, v1, v2}, Lccs;->a(Lccs;Ljava/lang/String;Lccq;)V

    .line 183
    return-void
.end method
