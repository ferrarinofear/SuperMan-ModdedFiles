.class Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;
.super Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.source "TreeSetConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->readResolve()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p2, "x0"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method protected populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "target"    # Ljava/util/Map;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    new-instance v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;

    invoke-direct {v1, p0, p4}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;)V

    .line 117
    return-void
.end method

.method protected putCurrentEntryIntoMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "target"    # Ljava/util/Map;

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p4, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method