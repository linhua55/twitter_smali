.class Lccu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/geo/d;

.field final synthetic b:Lcom/twitter/model/geo/d;

.field final synthetic c:Lccq;

.field final synthetic d:Lccs;


# direct methods
.method constructor <init>(Lccs;Lcom/twitter/model/geo/d;Lcom/twitter/model/geo/d;Lccq;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lccu;->d:Lccs;

    iput-object p2, p0, Lccu;->a:Lcom/twitter/model/geo/d;

    iput-object p3, p0, Lccu;->b:Lcom/twitter/model/geo/d;

    iput-object p4, p0, Lccu;->c:Lccq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lccu;->d:Lccs;

    invoke-static {v0}, Lccs;->a(Lccs;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 141
    iget-object v0, p0, Lccu;->d:Lccs;

    iget-object v1, p0, Lccu;->a:Lcom/twitter/model/geo/d;

    iget-object v2, p0, Lccu;->b:Lcom/twitter/model/geo/d;

    iget-object v3, p0, Lccu;->c:Lccq;

    invoke-static {v0, v1, v2, v3}, Lccs;->a(Lccs;Lcom/twitter/model/geo/d;Lcom/twitter/model/geo/d;Lccq;)V

    .line 142
    return-void
.end method
